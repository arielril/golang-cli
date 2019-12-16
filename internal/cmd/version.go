package cmd

import (
	"fmt"

	"github.com/spf13/cobra"
)

var versionCmd = &cobra.Command{
	Use:   "version",
	Short: "Shows the current version of the cli",
	Long:  `All software has versions. This is CLI's`,
	Run: func(cmd *cobra.Command, args []string) {
		fmt.Println("Golang CLI Template v0.9 -- HEAD")
	},
}

func init() {
	rootCmd.AddCommand(versionCmd)
}
